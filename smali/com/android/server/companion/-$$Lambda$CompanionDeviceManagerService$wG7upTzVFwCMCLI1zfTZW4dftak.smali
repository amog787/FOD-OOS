.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wG7upTzVFwCMCLI1zfTZW4dftak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/companion/Association;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/Association;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wG7upTzVFwCMCLI1zfTZW4dftak;->f$0:Landroid/companion/Association;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wG7upTzVFwCMCLI1zfTZW4dftak;->f$0:Landroid/companion/Association;

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$recordAssociation$2(Landroid/companion/Association;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
