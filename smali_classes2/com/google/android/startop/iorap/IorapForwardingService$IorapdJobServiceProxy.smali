.class public Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;
.super Landroid/app/job/JobService;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IorapForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IorapdJobServiceProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 464
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 465
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;->getActualIorapdJobService()Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->bindProxy(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;)V

    .line 466
    return-void
.end method

.method private getActualIorapdJobService()Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;
    .locals 1

    .line 474
    invoke-static {}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$600()Lcom/google/android/startop/iorap/IorapForwardingService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$100(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 480
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;->getActualIorapdJobService()Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 486
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;->getActualIorapdJobService()Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    return v0
.end method
