.class public final synthetic Lcom/android/server/-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI;->INSTANCE:Lcom/android/server/-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI;

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

    check-cast p1, Landroid/os/CarrierAssociatedAppEntry;

    invoke-static {p1}, Lcom/android/server/SystemConfigService$1;->lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$0(Landroid/os/CarrierAssociatedAppEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
