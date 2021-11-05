.class public final synthetic Lcom/android/server/wm/-$$Lambda$saxKzkaCgueXiijz1VFL4g-SiV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService$SettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$saxKzkaCgueXiijz1VFL4g-SiV0;->f$0:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$saxKzkaCgueXiijz1VFL4g-SiV0;->f$0:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->loadSettings()V

    return-void
.end method
