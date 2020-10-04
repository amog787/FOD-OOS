.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$startBackgroundScan$1(Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
