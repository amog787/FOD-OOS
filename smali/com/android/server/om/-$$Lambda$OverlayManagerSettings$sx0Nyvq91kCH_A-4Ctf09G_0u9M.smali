.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;

    invoke-direct {v0}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;-><init>()V

    sput-object v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;

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

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getOverlaysForUser$4(Landroid/content/om/OverlayInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
