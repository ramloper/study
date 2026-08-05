import { QuestionView } from "@/components/question-view";

type Props = {
  params: Promise<{ id: string }>;
};

export default async function QuestionPage({ params }: Props) {
  const { id } = await params;
  return <QuestionView questionId={id} />;
}
