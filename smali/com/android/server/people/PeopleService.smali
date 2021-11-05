.class public Lcom/android/server/people/PeopleService;
.super Lcom/android/server/SystemService;
.source "PeopleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/PeopleService$LocalService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PeopleService"


# instance fields
.field private final mDataManager:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/android/server/people/data/DataManager;

    invoke-direct {v0, p1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/PeopleService;

    .line 45
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 64
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager;->initialize()V

    .line 67
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 71
    const-class v0, Lcom/android/server/people/PeopleServiceInternal;

    new-instance v1, Lcom/android/server/people/PeopleService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/people/PeopleService$LocalService;-><init>(Lcom/android/server/people/PeopleService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/people/PeopleService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 81
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager;->onUserStopping(I)V

    .line 82
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 76
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager;->onUserUnlocked(I)V

    .line 77
    return-void
.end method
