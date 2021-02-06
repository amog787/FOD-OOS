.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->lambda$listModules$0(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p1

    return-object p1
.end method
