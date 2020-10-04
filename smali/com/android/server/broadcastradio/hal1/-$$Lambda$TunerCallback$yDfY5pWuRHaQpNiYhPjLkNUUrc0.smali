.class public final synthetic Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field private final synthetic f$1:Landroid/hardware/radio/RadioManager$ProgramInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;->f$1:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;->f$1:Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onCurrentProgramInfoChanged$2$TunerCallback(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method
