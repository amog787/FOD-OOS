.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CPvxVTMuuEdr8ub7dRnQQCFjgaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/radio/RadioManager$ProgramInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CPvxVTMuuEdr8ub7dRnQQCFjgaE;->f$0:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CPvxVTMuuEdr8ub7dRnQQCFjgaE;->f$0:Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onCurrentProgramInfoChanged$1(Landroid/hardware/radio/RadioManager$ProgramInfo;Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
