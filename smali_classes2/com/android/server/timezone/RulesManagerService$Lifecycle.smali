.class public Lcom/android/server/timezone/RulesManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "RulesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/android/server/timezone/RulesManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$000(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;

    move-result-object v0

    .line 83
    .local v0, "service":Lcom/android/server/timezone/RulesManagerService;
    invoke-virtual {v0}, Lcom/android/server/timezone/RulesManagerService;->start()V

    .line 87
    const-string v1, "timezone"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezone/RulesManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 91
    const-class v1, Lcom/android/server/timezone/RulesManagerService;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezone/RulesManagerService$Lifecycle;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 92
    return-void
.end method
