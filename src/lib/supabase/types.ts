export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  public: {
    Tables: {
      country: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "country_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      currency: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "currency_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      donation: {
        Row: {
          added_by: string | null
          created_at: string
          currency: string
          description: string | null
          draft: boolean
          end_date: string
          id: number
          location: string | null
          name: string
          price: number
          slug: string
          start_date: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          currency: string
          description?: string | null
          draft?: boolean
          end_date: string
          id?: number
          location?: string | null
          name: string
          price: number
          slug: string
          start_date: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          currency?: string
          description?: string | null
          draft?: boolean
          end_date?: string
          id?: number
          location?: string | null
          name?: string
          price?: number
          slug?: string
          start_date?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_currency_fkey"
            columns: ["currency"]
            isOneToOne: false
            referencedRelation: "currency"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_location_fkey"
            columns: ["location"]
            isOneToOne: false
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
        ]
      }
      donation_agent_organisation: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          organisation: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          organisation: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          organisation?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_agent_organisation_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_agent_organisation_donation_fkey"
            columns: ["donation"]
            isOneToOne: false
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_donation_agent_organisation_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      donation_agent_person: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          person: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          person: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          person?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_agent_person_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_agent_person_donation_fkey"
            columns: ["donation"]
            isOneToOne: false
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_donation_agent_person_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      donation_moment: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          moment: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          moment: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          moment?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_moment_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_moment_donation_fkey"
            columns: ["donation"]
            isOneToOne: false
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_donation_moment_moment_fkey"
            columns: ["moment"]
            isOneToOne: false
            referencedRelation: "moment"
            referencedColumns: ["name"]
          },
        ]
      }
      donation_recipient_organisation: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          organisation: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          organisation: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          organisation?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_recipient_organisation_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_recipient_organisation_donation_fkey"
            columns: ["donation"]
            isOneToOne: false
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_donation_recipient_organisation_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      donation_recipient_person: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          person: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          person: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          person?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_recipient_person_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_recipient_person_donation_fkey"
            columns: ["donation"]
            isOneToOne: false
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_donation_recipient_person_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      donation_same_as: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          name: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          name: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          name?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_same_as_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_same_as_donation_fkey"
            columns: ["donation"]
            isOneToOne: true
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
        ]
      }
      donation_source: {
        Row: {
          added_by: string | null
          created_at: string | null
          donation: string | null
          id: number
          source: string | null
        }
        Insert: {
          added_by?: string | null
          created_at?: string | null
          donation?: string | null
          id?: never
          source?: string | null
        }
        Update: {
          added_by?: string | null
          created_at?: string | null
          donation?: string | null
          id?: never
          source?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "donation_source_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "donation_source_donation_fkey"
            columns: ["donation"]
            isOneToOne: false
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "donation_source_source_fkey"
            columns: ["source"]
            isOneToOne: false
            referencedRelation: "source"
            referencedColumns: ["slug"]
          },
        ]
      }
      donation_tag: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          tag: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          tag: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          tag?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_tag_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_tag_donation_fkey"
            columns: ["donation"]
            isOneToOne: false
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_donation_tag_tag_fkey"
            columns: ["tag"]
            isOneToOne: false
            referencedRelation: "tag"
            referencedColumns: ["name"]
          },
        ]
      }
      donation_theme: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          theme: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          theme: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          theme?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_theme_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_theme_donation_fkey"
            columns: ["donation"]
            isOneToOne: false
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_donation_theme_theme_fkey"
            columns: ["theme"]
            isOneToOne: false
            referencedRelation: "theme"
            referencedColumns: ["name"]
          },
        ]
      }
      donation_url: {
        Row: {
          added_by: string | null
          created_at: string
          donation: string
          id: number
          name: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          donation: string
          id?: number
          name: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          donation?: string
          id?: number
          name?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_donation_url_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_donation_url_donation_fkey"
            columns: ["donation"]
            isOneToOne: true
            referencedRelation: "donation"
            referencedColumns: ["slug"]
          },
        ]
      }
      ethnicity: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "ethnicity_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      event: {
        Row: {
          added_by: string | null
          created_at: string
          description: string | null
          draft: boolean
          end_date: string
          event_type: string
          id: number
          location: string | null
          name: string
          slug: string
          start_date: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          description?: string | null
          draft?: boolean
          end_date: string
          event_type: string
          id?: number
          location?: string | null
          name: string
          slug: string
          start_date: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          description?: string | null
          draft?: boolean
          end_date?: string
          event_type?: string
          id?: number
          location?: string | null
          name?: string
          slug?: string
          start_date?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_event_type_fkey"
            columns: ["event_type"]
            isOneToOne: false
            referencedRelation: "event_type"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_event_location_fkey"
            columns: ["location"]
            isOneToOne: false
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
        ]
      }
      event_moment: {
        Row: {
          added_by: string | null
          created_at: string
          event: string
          id: number
          moment: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          event: string
          id?: number
          moment: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          event?: string
          id?: number
          moment?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_moment_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_event_moment_event_fkey"
            columns: ["event"]
            isOneToOne: false
            referencedRelation: "event"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_event_moment_moment_fkey"
            columns: ["moment"]
            isOneToOne: false
            referencedRelation: "moment"
            referencedColumns: ["name"]
          },
        ]
      }
      event_organisation: {
        Row: {
          added_by: string | null
          created_at: string
          event: string
          id: number
          organisation: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          event: string
          id?: number
          organisation: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          event?: string
          id?: number
          organisation?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_organisation_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_event_organisation_event_fkey"
            columns: ["event"]
            isOneToOne: false
            referencedRelation: "event"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_event_organisation_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      event_person: {
        Row: {
          added_by: string | null
          created_at: string
          event: string
          id: number
          person: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          event: string
          id?: number
          person: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          event?: string
          id?: number
          person?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_person_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_event_person_event_fkey"
            columns: ["event"]
            isOneToOne: false
            referencedRelation: "event"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_event_person_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      event_same_as: {
        Row: {
          added_by: string | null
          created_at: string
          event: string
          id: number
          name: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          event: string
          id?: number
          name: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          event?: string
          id?: number
          name?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_same_as_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_event_same_as_event_fkey"
            columns: ["event"]
            isOneToOne: true
            referencedRelation: "event"
            referencedColumns: ["slug"]
          },
        ]
      }
      event_source: {
        Row: {
          added_by: string | null
          created_at: string | null
          event: string | null
          id: number
          source: string | null
        }
        Insert: {
          added_by?: string | null
          created_at?: string | null
          event?: string | null
          id?: never
          source?: string | null
        }
        Update: {
          added_by?: string | null
          created_at?: string | null
          event?: string | null
          id?: never
          source?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "event_source_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "event_source_event_fkey"
            columns: ["event"]
            isOneToOne: false
            referencedRelation: "event"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "event_source_source_fkey"
            columns: ["source"]
            isOneToOne: false
            referencedRelation: "source"
            referencedColumns: ["slug"]
          },
        ]
      }
      event_tag: {
        Row: {
          added_by: string | null
          created_at: string
          event: string
          id: number
          tag: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          event: string
          id?: number
          tag: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          event?: string
          id?: number
          tag?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_tag_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_event_tag_event_fkey"
            columns: ["event"]
            isOneToOne: false
            referencedRelation: "event"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_event_tag_tag_fkey"
            columns: ["tag"]
            isOneToOne: false
            referencedRelation: "tag"
            referencedColumns: ["name"]
          },
        ]
      }
      event_theme: {
        Row: {
          added_by: string | null
          created_at: string
          event: string
          id: number
          theme: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          event: string
          id?: number
          theme: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          event?: string
          id?: number
          theme?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_theme_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_event_theme_event_fkey"
            columns: ["event"]
            isOneToOne: false
            referencedRelation: "event"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_event_theme_theme_fkey"
            columns: ["theme"]
            isOneToOne: false
            referencedRelation: "theme"
            referencedColumns: ["name"]
          },
        ]
      }
      event_type: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_type_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      event_url: {
        Row: {
          added_by: string | null
          created_at: string
          event: string
          id: number
          name: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          event: string
          id?: number
          name: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          event?: string
          id?: number
          name?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_event_url_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_event_url_event_fkey"
            columns: ["event"]
            isOneToOne: true
            referencedRelation: "event"
            referencedColumns: ["slug"]
          },
        ]
      }
      gender: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "gender_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      language: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "language_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      moment: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "moment_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      occupation: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "occupation_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      organisation: {
        Row: {
          added_by: string | null
          alternative_names: string | null
          created_at: string
          description: string | null
          dissolution_date: string | null
          draft: boolean
          founding_date: string | null
          id: number
          location: string | null
          name: string
          organisation_type: string | null
          slug: string
        }
        Insert: {
          added_by?: string | null
          alternative_names?: string | null
          created_at?: string
          description?: string | null
          dissolution_date?: string | null
          draft?: boolean
          founding_date?: string | null
          id?: number
          location?: string | null
          name: string
          organisation_type?: string | null
          slug: string
        }
        Update: {
          added_by?: string | null
          alternative_names?: string | null
          created_at?: string
          description?: string | null
          dissolution_date?: string | null
          draft?: boolean
          founding_date?: string | null
          id?: number
          location?: string | null
          name?: string
          organisation_type?: string | null
          slug?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_organisation_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_location_fkey"
            columns: ["location"]
            isOneToOne: false
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_organisation_organisation_type_fkey"
            columns: ["organisation_type"]
            isOneToOne: false
            referencedRelation: "organisation_type"
            referencedColumns: ["name"]
          },
        ]
      }
      organisation_feature: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          image_description: string
          image_title: string
          image_url: string
          organisation: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          image_description: string
          image_title: string
          image_url: string
          organisation: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          image_description?: string
          image_title?: string
          image_url?: string
          organisation?: string
        }
        Relationships: [
          {
            foreignKeyName: "organisation_feature_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_feature_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: true
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      organisation_language: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          language: string
          organisation: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          language: string
          organisation: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          language?: string
          organisation?: string
        }
        Relationships: [
          {
            foreignKeyName: "organisation_language_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_language_language_fkey"
            columns: ["language"]
            isOneToOne: false
            referencedRelation: "language"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_language_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      organisation_member_of: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          member_of: string
          organisation: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          member_of: string
          organisation: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          member_of?: string
          organisation?: string
        }
        Relationships: [
          {
            foreignKeyName: "organisation_member_of_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_member_of_member_of_fkey"
            columns: ["member_of"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_organisation_member_of_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      organisation_moment: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          moment: string
          organisation: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          moment: string
          organisation: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          moment?: string
          organisation?: string
        }
        Relationships: [
          {
            foreignKeyName: "organisation_moment_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_moment_moment_fkey"
            columns: ["moment"]
            isOneToOne: false
            referencedRelation: "moment"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_moment_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      organisation_same_as: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
          organisation: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
          organisation: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
          organisation?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "organisation_same_as_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_same_as_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: true
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      organisation_source: {
        Row: {
          added_by: string | null
          created_at: string | null
          id: number
          organisation: string | null
          source: string | null
        }
        Insert: {
          added_by?: string | null
          created_at?: string | null
          id?: never
          organisation?: string | null
          source?: string | null
        }
        Update: {
          added_by?: string | null
          created_at?: string | null
          id?: never
          organisation?: string | null
          source?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "organisation_source_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "organisation_source_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "organisation_source_source_fkey"
            columns: ["source"]
            isOneToOne: false
            referencedRelation: "source"
            referencedColumns: ["slug"]
          },
        ]
      }
      organisation_tag: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          organisation: string
          tag: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          organisation: string
          tag: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          organisation?: string
          tag?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_organisation_tag_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_tag_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_organisation_tag_tag_fkey"
            columns: ["tag"]
            isOneToOne: false
            referencedRelation: "tag"
            referencedColumns: ["name"]
          },
        ]
      }
      organisation_theme: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          organisation: string
          theme: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          organisation: string
          theme: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          organisation?: string
          theme?: string
        }
        Relationships: [
          {
            foreignKeyName: "organisation_theme_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_theme_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_organisation_theme_theme_fkey"
            columns: ["theme"]
            isOneToOne: false
            referencedRelation: "theme"
            referencedColumns: ["name"]
          },
        ]
      }
      organisation_type: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "organisation_type_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      organisation_url: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
          organisation: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
          organisation: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
          organisation?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "organisation_url_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_organisation_url_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: true
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
        ]
      }
      person: {
        Row: {
          added_by: string | null
          alternative_names: string | null
          created_at: string
          description: string | null
          draft: boolean
          ethnicity: string | null
          ethnicity_description: string | null
          gender: string | null
          id: number
          language: string | null
          name: string
          nationality: string | null
          nationality_description: string | null
          slug: string
        }
        Insert: {
          added_by?: string | null
          alternative_names?: string | null
          created_at?: string
          description?: string | null
          draft?: boolean
          ethnicity?: string | null
          ethnicity_description?: string | null
          gender?: string | null
          id?: number
          language?: string | null
          name: string
          nationality?: string | null
          nationality_description?: string | null
          slug: string
        }
        Update: {
          added_by?: string | null
          alternative_names?: string | null
          created_at?: string
          description?: string | null
          draft?: boolean
          ethnicity?: string | null
          ethnicity_description?: string | null
          gender?: string | null
          id?: number
          language?: string | null
          name?: string
          nationality?: string | null
          nationality_description?: string | null
          slug?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_ethnicity_fkey"
            columns: ["ethnicity"]
            isOneToOne: false
            referencedRelation: "ethnicity"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_gender_fkey"
            columns: ["gender"]
            isOneToOne: false
            referencedRelation: "gender"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_language_fkey"
            columns: ["language"]
            isOneToOne: false
            referencedRelation: "language"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_nationality_fkey"
            columns: ["nationality"]
            isOneToOne: false
            referencedRelation: "country"
            referencedColumns: ["name"]
          },
        ]
      }
      person_feature: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          image_description: string
          image_title: string
          image_url: string
          person: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          image_description: string
          image_title: string
          image_url: string
          person: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          image_description?: string
          image_title?: string
          image_url?: string
          person?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_feature_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_image_person_fkey"
            columns: ["person"]
            isOneToOne: true
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      person_funder: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          organisation: string
          person: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          organisation: string
          person: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          organisation?: string
          person?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_funder_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_funder_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_person_funder_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      person_knows: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          knows: string
          person: string
          relationship: string | null
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          knows: string
          person: string
          relationship?: string | null
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          knows?: string
          person?: string
          relationship?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "person_knows_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_knows_knows_fkey"
            columns: ["knows"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_person_knows_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_person_knows_relationship_fkey"
            columns: ["relationship"]
            isOneToOne: false
            referencedRelation: "person_relationship_type"
            referencedColumns: ["name"]
          },
        ]
      }
      person_member_of: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          organisation: string
          person: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          organisation: string
          person: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          organisation?: string
          person?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_member_of_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_member_of_organisation_organisation_fkey"
            columns: ["organisation"]
            isOneToOne: false
            referencedRelation: "organisation"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_person_member_of_organisation_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      person_moment: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          moment: string
          person: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          moment: string
          person: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          moment?: string
          person?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_moment_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_moment_moment_fkey"
            columns: ["moment"]
            isOneToOne: false
            referencedRelation: "moment"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_moment_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      person_occupation: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          occupation: string
          person: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          occupation: string
          person: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          occupation?: string
          person?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_occupation_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_occupation_occupation_fkey"
            columns: ["occupation"]
            isOneToOne: false
            referencedRelation: "occupation"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_occupation_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      person_relationship_type: {
        Row: {
          created_at: string
          id: number
          name: string
        }
        Insert: {
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: []
      }
      person_same_as: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
          person: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
          person: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
          person?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_same_as_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_same_as_person_fkey"
            columns: ["person"]
            isOneToOne: true
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      person_source: {
        Row: {
          added_by: string | null
          created_at: string | null
          id: number
          person: string | null
          source: string | null
        }
        Insert: {
          added_by?: string | null
          created_at?: string | null
          id?: never
          person?: string | null
          source?: string | null
        }
        Update: {
          added_by?: string | null
          created_at?: string | null
          id?: never
          person?: string | null
          source?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "person_source_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "person_source_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "person_source_source_fkey"
            columns: ["source"]
            isOneToOne: false
            referencedRelation: "source"
            referencedColumns: ["slug"]
          },
        ]
      }
      person_tag: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          person: string
          tag: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          person: string
          tag: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          person?: string
          tag?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_tag_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_tag_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_person_tag_tag_fkey"
            columns: ["tag"]
            isOneToOne: false
            referencedRelation: "tag"
            referencedColumns: ["name"]
          },
        ]
      }
      person_theme: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          person: string
          theme: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          person: string
          theme: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          person?: string
          theme?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_theme_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_theme_person_fkey"
            columns: ["person"]
            isOneToOne: false
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_person_theme_theme_fkey"
            columns: ["theme"]
            isOneToOne: false
            referencedRelation: "theme"
            referencedColumns: ["name"]
          },
        ]
      }
      person_url: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
          person: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
          person: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
          person?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "person_url_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_person_url_person_fkey"
            columns: ["person"]
            isOneToOne: true
            referencedRelation: "person"
            referencedColumns: ["slug"]
          },
        ]
      }
      place: {
        Row: {
          added_by: string | null
          alternative_names: string | null
          created_at: string
          description: string | null
          draft: boolean
          id: number
          latitude: number | null
          longitude: number | null
          name: string
          slug: string
        }
        Insert: {
          added_by?: string | null
          alternative_names?: string | null
          created_at?: string
          description?: string | null
          draft?: boolean
          id?: number
          latitude?: number | null
          longitude?: number | null
          name: string
          slug: string
        }
        Update: {
          added_by?: string | null
          alternative_names?: string | null
          created_at?: string
          description?: string | null
          draft?: boolean
          id?: number
          latitude?: number | null
          longitude?: number | null
          name?: string
          slug?: string
        }
        Relationships: [
          {
            foreignKeyName: "place_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      place_feature: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          image_description: string
          image_title: string
          image_url: string
          place: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          image_description: string
          image_title: string
          image_url: string
          place: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          image_description?: string
          image_title?: string
          image_url?: string
          place?: string
        }
        Relationships: [
          {
            foreignKeyName: "place_feature_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_place_feature_place_fkey"
            columns: ["place"]
            isOneToOne: true
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
        ]
      }
      place_moment: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          moment: string
          place: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          moment: string
          place: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          moment?: string
          place?: string
        }
        Relationships: [
          {
            foreignKeyName: "place_moment_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_place_moment_moment_fkey"
            columns: ["moment"]
            isOneToOne: false
            referencedRelation: "moment"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_place_moment_place_fkey"
            columns: ["place"]
            isOneToOne: false
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
        ]
      }
      place_same_as: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
          place: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
          place: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
          place?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "place_same_as_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_place_same_as_place_fkey"
            columns: ["place"]
            isOneToOne: true
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
        ]
      }
      place_source: {
        Row: {
          added_by: string | null
          created_at: string | null
          id: number
          place: string | null
          source: string | null
        }
        Insert: {
          added_by?: string | null
          created_at?: string | null
          id?: never
          place?: string | null
          source?: string | null
        }
        Update: {
          added_by?: string | null
          created_at?: string | null
          id?: never
          place?: string | null
          source?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "place_source_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "place_source_place_fkey"
            columns: ["place"]
            isOneToOne: false
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "place_source_source_fkey"
            columns: ["source"]
            isOneToOne: false
            referencedRelation: "source"
            referencedColumns: ["slug"]
          },
        ]
      }
      place_theme: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          place: string
          theme: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          place: string
          theme: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          place?: string
          theme?: string
        }
        Relationships: [
          {
            foreignKeyName: "place_theme_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_place_theme_place_fkey"
            columns: ["place"]
            isOneToOne: false
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
          {
            foreignKeyName: "public_place_theme_theme_fkey"
            columns: ["theme"]
            isOneToOne: false
            referencedRelation: "theme"
            referencedColumns: ["name"]
          },
        ]
      }
      place_type: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "place_type_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      place_url: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
          place: string
          url: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
          place: string
          url: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
          place?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "place_url_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
          {
            foreignKeyName: "public_place_url_place_fkey"
            columns: ["place"]
            isOneToOne: true
            referencedRelation: "place"
            referencedColumns: ["slug"]
          },
        ]
      }
      researcher: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "researcher_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      source: {
        Row: {
          added_by: string | null
          created_at: string
          description: string | null
          id: number
          name: string
          slug: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          description?: string | null
          id?: number
          name: string
          slug: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          description?: string | null
          id?: number
          name?: string
          slug?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_source_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      tag: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "tag_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
      theme: {
        Row: {
          added_by: string | null
          created_at: string
          id: number
          name: string
        }
        Insert: {
          added_by?: string | null
          created_at?: string
          id?: number
          name: string
        }
        Update: {
          added_by?: string | null
          created_at?: string
          id?: number
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "theme_added_by_fkey"
            columns: ["added_by"]
            isOneToOne: false
            referencedRelation: "researcher"
            referencedColumns: ["name"]
          },
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      slugify: {
        Args: {
          value: string
        }
        Returns: string
      }
      unaccent: {
        Args: {
          "": string
        }
        Returns: string
      }
      unaccent_init: {
        Args: {
          "": unknown
        }
        Returns: unknown
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type PublicSchema = Database[Extract<keyof Database, "public">]

export type Tables<
  PublicTableNameOrOptions extends
    | keyof (PublicSchema["Tables"] & PublicSchema["Views"])
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
        Database[PublicTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
      Database[PublicTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : PublicTableNameOrOptions extends keyof (PublicSchema["Tables"] &
        PublicSchema["Views"])
    ? (PublicSchema["Tables"] &
        PublicSchema["Views"])[PublicTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  PublicTableNameOrOptions extends
    | keyof PublicSchema["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema["Tables"]
    ? PublicSchema["Tables"][PublicTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  PublicTableNameOrOptions extends
    | keyof PublicSchema["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema["Tables"]
    ? PublicSchema["Tables"][PublicTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  PublicEnumNameOrOptions extends
    | keyof PublicSchema["Enums"]
    | { schema: keyof Database },
  EnumName extends PublicEnumNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = PublicEnumNameOrOptions extends { schema: keyof Database }
  ? Database[PublicEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : PublicEnumNameOrOptions extends keyof PublicSchema["Enums"]
    ? PublicSchema["Enums"][PublicEnumNameOrOptions]
    : never
