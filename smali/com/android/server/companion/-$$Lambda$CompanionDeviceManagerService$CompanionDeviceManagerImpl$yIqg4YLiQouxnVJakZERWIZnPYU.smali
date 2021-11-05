.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU;

    invoke-direct {v0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU;-><init>()V

    sput-object v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$yIqg4YLiQouxnVJakZERWIZnPYU;

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

    check-cast p1, Landroid/companion/Association;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$getAssociations$2(Landroid/companion/Association;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
