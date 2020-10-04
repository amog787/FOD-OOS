.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$rARZcsrvtM2sYbF4SrEE2BXDQ3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$rARZcsrvtM2sYbF4SrEE2BXDQ3U;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$rARZcsrvtM2sYbF4SrEE2BXDQ3U;->f$0:I

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$dumpInternalProto$4(ILcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    return p1
.end method
