.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;->f$0:Lcom/android/server/job/JobSchedulerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;->f$0:Lcom/android/server/job/JobSchedulerService;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$AauD0it1BcgWldVm_V1m2Jo7_Zc(Lcom/android/server/job/JobSchedulerService;I)Z

    move-result p1

    return p1
.end method
