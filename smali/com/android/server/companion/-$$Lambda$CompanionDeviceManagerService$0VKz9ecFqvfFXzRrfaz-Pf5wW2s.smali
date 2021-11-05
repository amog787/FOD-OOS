.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;

    invoke-direct {v0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;-><init>()V

    sput-object v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$getPackageInfo$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
