.class public final Lcom/android/server/pm/StagingManager$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# static fields
.field private static sStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 165
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager;->markStagedSessionsAsSuccessful()V

    .line 168
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 161
    return-void
.end method

.method startService(Lcom/android/server/pm/StagingManager;)V
    .locals 1
    .param p1, "stagingManager"    # Lcom/android/server/pm/StagingManager;

    .line 154
    sput-object p1, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    .line 155
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, p0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 156
    return-void
.end method
