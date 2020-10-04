.class public final synthetic Lcom/android/server/location/-$$Lambda$ActivityRecognitionProxy$1$d2hvjp-Sk2zwb2N0mtEiubZ0jBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/ActivityRecognitionProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ActivityRecognitionProxy$1$d2hvjp-Sk2zwb2N0mtEiubZ0jBE;->f$0:Lcom/android/server/location/ActivityRecognitionProxy;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ActivityRecognitionProxy$1$d2hvjp-Sk2zwb2N0mtEiubZ0jBE;->f$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-static {v0, p1}, Lcom/android/server/location/ActivityRecognitionProxy$1;->lambda$onBind$0(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/os/IBinder;)V

    return-void
.end method
