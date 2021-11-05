.class public final synthetic Lcom/android/server/companion/-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/companion/-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/companion/-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA;

    invoke-direct {v0}, Lcom/android/server/companion/-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA;-><init>()V

    sput-object v0, Lcom/android/server/companion/-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA;->INSTANCE:Lcom/android/server/companion/-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->maybeGrantAutoRevokeExemptions()V

    return-void
.end method
