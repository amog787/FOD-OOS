.class public Lcom/android/server/display/DisplayInfoProxy;
.super Ljava/lang/Object;
.source "DisplayInfoProxy.java"


# instance fields
.field private mInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/view/DisplayInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public get()Landroid/view/DisplayInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public set(Landroid/view/DisplayInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 41
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 42
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 43
    return-void
.end method
