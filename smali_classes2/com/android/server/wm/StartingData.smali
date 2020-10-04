.class public abstract Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field protected final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method protected constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    return-void
.end method


# virtual methods
.method abstract createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method
