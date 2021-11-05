.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$oYSpdTmzLHvD4Kqu1cDfzfZuvwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

.field public final synthetic f$1:Landroid/companion/IFindDeviceCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;Landroid/companion/IFindDeviceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$oYSpdTmzLHvD4Kqu1cDfzfZuvwo;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    iput-object p2, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$oYSpdTmzLHvD4Kqu1cDfzfZuvwo;->f$1:Landroid/companion/IFindDeviceCallback;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$oYSpdTmzLHvD4Kqu1cDfzfZuvwo;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    iget-object v1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$oYSpdTmzLHvD4Kqu1cDfzfZuvwo;->f$1:Landroid/companion/IFindDeviceCallback;

    check-cast p1, Landroid/companion/Association;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$associate$1$CompanionDeviceManagerService$CompanionDeviceManagerImpl(Landroid/companion/IFindDeviceCallback;Landroid/companion/Association;Ljava/lang/Throwable;)V

    return-void
.end method
