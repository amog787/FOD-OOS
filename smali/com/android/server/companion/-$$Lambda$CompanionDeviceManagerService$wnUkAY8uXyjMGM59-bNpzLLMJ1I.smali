.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;

    invoke-direct {v0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;-><init>()V

    sput-object v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-static {p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$wnUkAY8uXyjMGM59-bNpzLLMJ1I(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V

    return-void
.end method
