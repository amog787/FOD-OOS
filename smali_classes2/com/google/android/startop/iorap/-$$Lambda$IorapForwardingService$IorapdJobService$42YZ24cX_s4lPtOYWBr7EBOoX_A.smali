.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$42YZ24cX_s4lPtOYWBr7EBOoX_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field public final synthetic f$0:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$42YZ24cX_s4lPtOYWBr7EBOoX_A;->f$0:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/android/startop/iorap/IIorap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$42YZ24cX_s4lPtOYWBr7EBOoX_A;->f$0:Landroid/app/job/JobParameters;

    invoke-static {v0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->lambda$onStopJob$1(Landroid/app/job/JobParameters;Lcom/google/android/startop/iorap/IIorap;)V

    return-void
.end method
