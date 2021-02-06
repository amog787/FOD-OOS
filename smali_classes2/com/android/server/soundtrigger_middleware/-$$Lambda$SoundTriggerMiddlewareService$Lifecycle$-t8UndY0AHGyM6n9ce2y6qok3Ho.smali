.class public final synthetic Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/HalFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho;-><init>()V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho;->INSTANCE:Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .locals 1

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;->lambda$onStart$0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    return-object v0
.end method
