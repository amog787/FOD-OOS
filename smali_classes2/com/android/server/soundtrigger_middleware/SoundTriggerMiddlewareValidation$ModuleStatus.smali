.class final enum Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
.super Ljava/lang/Enum;
.source "SoundTriggerMiddlewareValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModuleStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

.field public static final enum ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

.field public static final enum DEAD:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

.field public static final enum DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 116
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    const-string v1, "ALIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    .line 117
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    const-string v1, "DETACHED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    .line 118
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    const-string v1, "DEAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DEAD:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    .line 115
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 115
    const-class v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
    .locals 1

    .line 115
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    return-object v0
.end method
