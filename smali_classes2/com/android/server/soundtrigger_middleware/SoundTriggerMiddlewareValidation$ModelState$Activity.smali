.class final enum Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
.super Ljava/lang/Enum;
.source "SoundTriggerMiddlewareValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

.field public static final enum ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

.field public static final enum LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 328
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 330
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 326
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 326
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 326
    const-class v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    return-object v0
.end method

.method public static values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    .locals 1

    .line 326
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    return-object v0
.end method
