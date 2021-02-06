.class Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisplayChildWindowContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/WindowContainer<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 4605
    .local p0, "this":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;, "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<TE;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 4607
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->mOrientation:I

    .line 4608
    return-void
.end method


# virtual methods
.method fillsParent()Z
    .locals 1

    .line 4612
    .local p0, "this":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;, "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 4617
    .local p0, "this":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;, "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<TE;>;"
    const/4 v0, 0x1

    return v0
.end method
