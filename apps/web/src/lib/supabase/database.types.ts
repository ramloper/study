export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[];

export type Database = {
  public: {
    Tables: {
      profiles: {
        Row: {
          id: string;
          display_name: string;
          avatar_url: string | null;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id: string;
          display_name?: string;
          avatar_url?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          display_name?: string;
          avatar_url?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
      subjects: {
        Row: {
          id: string;
          name: string;
          slug: string;
          sort_order: number;
          is_active: boolean;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          name: string;
          slug: string;
          sort_order?: number;
          is_active?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          name?: string;
          slug?: string;
          sort_order?: number;
          is_active?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
      user_subjects: {
        Row: {
          user_id: string;
          subject_id: string;
          is_enabled: boolean;
          sort_order: number;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          user_id: string;
          subject_id: string;
          is_enabled?: boolean;
          sort_order?: number;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          user_id?: string;
          subject_id?: string;
          is_enabled?: boolean;
          sort_order?: number;
          created_at?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
      questions: {
        Row: {
          id: string;
          subject_id: string;
          type: "mcq" | "short";
          body: string;
          difficulty: number;
          number: number | null;
          is_active: boolean;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          subject_id: string;
          type: "mcq" | "short";
          body: string;
          difficulty?: number;
          number?: number | null;
          is_active?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          subject_id?: string;
          type?: "mcq" | "short";
          body?: string;
          difficulty?: number;
          number?: number | null;
          is_active?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
      question_options: {
        Row: {
          id: string;
          question_id: string;
          body: string;
          sort_order: number;
          created_at: string;
        };
        Insert: {
          id?: string;
          question_id: string;
          body: string;
          sort_order?: number;
          created_at?: string;
        };
        Update: {
          id?: string;
          question_id?: string;
          body?: string;
          sort_order?: number;
          created_at?: string;
        };
        Relationships: [];
      };
      question_answers: {
        Row: {
          id: string;
          question_id: string;
          correct_option_id: string | null;
          answer_text: string;
          accepted_answers: string[] | null;
          explanation: string;
          concepts: string[];
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          question_id: string;
          correct_option_id?: string | null;
          answer_text: string;
          accepted_answers?: string[] | null;
          explanation: string;
          concepts?: string[];
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          question_id?: string;
          correct_option_id?: string | null;
          answer_text?: string;
          accepted_answers?: string[] | null;
          explanation?: string;
          concepts?: string[];
          created_at?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
      attempts: {
        Row: {
          id: string;
          user_id: string;
          question_id: string;
          selected_option_id: string | null;
          answer_text: string | null;
          is_correct: boolean;
          answered_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          question_id: string;
          selected_option_id?: string | null;
          answer_text?: string | null;
          is_correct: boolean;
          answered_at?: string;
        };
        Update: {
          id?: string;
          user_id?: string;
          question_id?: string;
          selected_option_id?: string | null;
          answer_text?: string | null;
          is_correct?: boolean;
          answered_at?: string;
        };
        Relationships: [];
      };
      alarm_settings: {
        Row: {
          user_id: string;
          enabled: boolean;
          start_hour: number;
          end_hour: number;
          interval_value: number;
          interval_unit: "min" | "hour";
          weekdays_only: boolean;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          user_id: string;
          enabled?: boolean;
          start_hour?: number;
          end_hour?: number;
          interval_value?: number;
          interval_unit?: "min" | "hour";
          weekdays_only?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          user_id?: string;
          enabled?: boolean;
          start_hour?: number;
          end_hour?: number;
          interval_value?: number;
          interval_unit?: "min" | "hour";
          weekdays_only?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
    };
    Views: Record<string, never>;
    Functions: {
      count_enabled_subjects: {
        Args: Record<string, never>;
        Returns: number;
      };
    };
    Enums: Record<string, never>;
    CompositeTypes: Record<string, never>;
  };
};

export type Subject = Database["public"]["Tables"]["subjects"]["Row"];
export type UserSubject = Database["public"]["Tables"]["user_subjects"]["Row"];
