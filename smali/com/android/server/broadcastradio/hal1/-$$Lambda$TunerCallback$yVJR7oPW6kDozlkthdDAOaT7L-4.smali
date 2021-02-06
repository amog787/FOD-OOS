.class public final synthetic Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field public final synthetic f$1:Landroid/hardware/radio/ProgramList$Chunk;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;->f$1:Landroid/hardware/radio/ProgramList$Chunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;->f$1:Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListUpdated$10$TunerCallback(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method
