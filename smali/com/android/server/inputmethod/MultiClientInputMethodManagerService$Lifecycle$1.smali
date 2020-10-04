.class Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

.field final synthetic val$userIdToInputMethodInfoMapper:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    .line 169
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;->this$0:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;->val$userIdToInputMethodInfoMapper:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
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

    .line 189
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;->val$userIdToInputMethodInfoMapper:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

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

    .line 183
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;->val$userIdToInputMethodInfoMapper:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideCurrentInputMethod()V
    .locals 0

    .line 177
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 178
    return-void
.end method

.method public setInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .line 172
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 173
    return-void
.end method

.method public updateClientKeyguard()V
    .locals 0

    .line 197
    return-void
.end method
