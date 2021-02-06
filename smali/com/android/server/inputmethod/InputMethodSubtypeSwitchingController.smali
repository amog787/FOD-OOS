.class final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

.field private final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p2, "context"    # Landroid/content/Context;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 495
    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 45
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v0

    return v0
.end method

.method private static calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    .line 242
    invoke-static {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    goto :goto_0

    .line 243
    :cond_0
    const/4 v0, -0x1

    .line 242
    :goto_0
    return v0
.end method

.method public static createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
    .locals 1
    .param p0, "settings"    # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 499
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;

    .line 537
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->dump(Landroid/util/Printer;)V

    goto :goto_0

    .line 540
    :cond_0
    const-string v0, "    mController=null"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 1
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 521
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x0

    return-object v0

    .line 527
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    return-object v0
.end method

.method public getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;
    .locals 1
    .param p1, "includingAuxiliarySubtypes"    # Z
    .param p2, "isScreenLocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 503
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez v0, :cond_0

    .line 507
    return-void

    .line 509
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 510
    return-void
.end method

.method public resetCircularListLocked(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 513
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    .line 514
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 515
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;

    move-result-object v0

    .line 514
    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 517
    return-void
.end method
