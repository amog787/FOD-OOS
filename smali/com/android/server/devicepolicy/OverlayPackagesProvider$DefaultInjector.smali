.class final Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;
.super Ljava/lang/Object;
.source "OverlayPackagesProvider.java"

# interfaces
.implements Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/OverlayPackagesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/OverlayPackagesProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/devicepolicy/OverlayPackagesProvider$1;

    .line 69
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isPerProfileImeEnabled()Z
    .locals 1

    .line 72
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    return v0
.end method
