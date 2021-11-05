.class Lcom/android/server/autofill/ui/SaveUi$1;
.super Landroid/view/ContextThemeWrapper;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/SaveUi;-><init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/SaveUi;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I

    .line 189
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-direct {p0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private resolveActivity(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 211
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi$1;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 212
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 213
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 214
    return-object v1

    .line 216
    :cond_0
    const/16 v2, 0x800

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$1;->resolveActivity(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "SaveUi"

    if-nez v0, :cond_1

    .line 193
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not startActivity for save UI with intent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x1

    const-string v2, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 203
    .local v0, "p":Landroid/app/PendingIntent;
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity add save UI restored with intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-static {v1, v0, p1}, Lcom/android/server/autofill/ui/SaveUi;->access$000(Lcom/android/server/autofill/ui/SaveUi;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 208
    return-void
.end method
