.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;

    invoke-direct {v0}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;-><init>()V

    sput-object v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getUsers$5(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
