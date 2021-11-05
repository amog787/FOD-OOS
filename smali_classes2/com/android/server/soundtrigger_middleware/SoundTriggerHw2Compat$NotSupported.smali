.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
.super Ljava/lang/Exception;
.source "SoundTriggerHw2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotSupported"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 437
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 438
    return-void
.end method


# virtual methods
.method throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;
    .locals 3

    .line 447
    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
