.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$iqEX-hdziBwn1njNVhAdQHeXwus;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$iqEX-hdziBwn1njNVhAdQHeXwus;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$iqEX-hdziBwn1njNVhAdQHeXwus;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$iqEX-hdziBwn1njNVhAdQHeXwus;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$iqEX-hdziBwn1njNVhAdQHeXwus;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$iqEX-hdziBwn1njNVhAdQHeXwus;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/pm/ProviderInfo;

    check-cast p2, Landroid/content/pm/ProviderInfo;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$static$18(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I

    move-result p1

    return p1
.end method
