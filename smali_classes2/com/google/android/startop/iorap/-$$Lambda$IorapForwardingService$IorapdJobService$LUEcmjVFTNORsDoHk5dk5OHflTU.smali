.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$LUEcmjVFTNORsDoHk5dk5OHflTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/startop/iorap/RequestId;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/RequestId;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$LUEcmjVFTNORsDoHk5dk5OHflTU;->f$0:Lcom/google/android/startop/iorap/RequestId;

    iput-object p2, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$LUEcmjVFTNORsDoHk5dk5OHflTU;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/android/startop/iorap/IIorap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$LUEcmjVFTNORsDoHk5dk5OHflTU;->f$0:Lcom/google/android/startop/iorap/RequestId;

    iget-object v1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$LUEcmjVFTNORsDoHk5dk5OHflTU;->f$1:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->lambda$onStartJob$0(Lcom/google/android/startop/iorap/RequestId;Landroid/app/job/JobParameters;Lcom/google/android/startop/iorap/IIorap;)V

    return-void
.end method
