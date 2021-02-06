.class public final synthetic Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$jGqhqH8bl_lWotJlrzraXplioIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$jGqhqH8bl_lWotJlrzraXplioIw;->f$0:Lcom/android/server/telecom/TelecomLoaderService;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$jGqhqH8bl_lWotJlrzraXplioIw;->f$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/TelecomLoaderService;->lambda$registerDefaultAppNotifier$3$TelecomLoaderService(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
