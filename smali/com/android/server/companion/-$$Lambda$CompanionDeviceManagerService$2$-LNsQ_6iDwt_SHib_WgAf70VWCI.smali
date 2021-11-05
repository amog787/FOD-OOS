.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$-LNsQ_6iDwt_SHib_WgAf70VWCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$-LNsQ_6iDwt_SHib_WgAf70VWCI;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$-LNsQ_6iDwt_SHib_WgAf70VWCI;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/companion/Association;

    invoke-static {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$2;->lambda$onPackageRemoved$0(Ljava/lang/String;Landroid/companion/Association;)Z

    move-result p1

    return p1
.end method
