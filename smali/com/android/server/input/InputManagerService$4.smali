.class Lcom/android/server/input/InputManagerService$4;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$d:Landroid/view/InputDevice;

.field final synthetic val$layouts:Ljava/util/List;

.field final synthetic val$systemLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 897
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 903
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 904
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 907
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 908
    .local v0, "locales":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 909
    .local v1, "numLocales":I
    const/4 v2, 0x0

    .local v2, "localeIndex":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 910
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/input/InputManagerService;->access$800(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 911
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    goto :goto_1

    .line 909
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    .end local v2    # "localeIndex":I
    :cond_2
    :goto_1
    return-void

    .line 905
    .end local v0    # "locales":Landroid/os/LocaleList;
    .end local v1    # "numLocales":I
    :cond_3
    :goto_2
    return-void
.end method
