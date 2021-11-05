.class public final synthetic Lcom/android/server/job/-$$Lambda$JobStore$JobSet$id1Y3Yh8Y9sEb-njlNCUNay6U9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobStore$JobSet$id1Y3Yh8Y9sEb-njlNCUNay6U9k;->f$0:[I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobStore$JobSet$id1Y3Yh8Y9sEb-njlNCUNay6U9k;->f$0:[I

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->lambda$removeJobsOfNonUsers$1([ILcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    return p1
.end method
