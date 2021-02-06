.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field public final synthetic f$1:Landroid/hardware/broadcastradio/V2_0/ProgramInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onCurrentProgramInfoChanged$3$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    return-void
.end method
