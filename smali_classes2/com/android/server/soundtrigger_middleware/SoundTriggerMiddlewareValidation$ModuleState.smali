.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModuleState"
.end annotation


# instance fields
.field final properties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

.field sessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;)V
    .locals 0
    .param p2, "properties"    # Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    .line 125
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    .line 126
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->properties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .param p2, "x1"    # Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    .param p3, "x2"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$1;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;)V

    return-void
.end method
