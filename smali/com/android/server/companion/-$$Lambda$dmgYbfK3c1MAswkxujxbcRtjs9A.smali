.class public final synthetic Lcom/android/server/companion/-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/companion/-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/companion/-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A;

    invoke-direct {v0}, Lcom/android/server/companion/-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A;-><init>()V

    sput-object v0, Lcom/android/server/companion/-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A;->INSTANCE:Lcom/android/server/companion/-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A;

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

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceDiscoveryService;

    move-result-object p1

    return-object p1
.end method
