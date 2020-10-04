.class public final Lcom/android/server/wm/LaunchWarningWindow;
.super Landroid/app/Dialog;
.source "LaunchWarningWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cur"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "next"    # Lcom/android/server/wm/ActivityRecord;

    .line 31
    const v0, 0x103043b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LaunchWarningWindow;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 38
    const v1, 0x1090088

    invoke-virtual {p0, v1}, Lcom/android/server/wm/LaunchWarningWindow;->setContentView(I)V

    .line 39
    const v1, 0x1040376

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/LaunchWarningWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 42
    .local v1, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/server/wm/LaunchWarningWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x1010355

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v0, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 45
    const v0, 0x10203e3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v2, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    const v2, 0x10203e4

    invoke-virtual {p0, v2}, Lcom/android/server/wm/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 48
    const v6, 0x1040375

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v4, 0x1020391

    invoke-virtual {p0, v4}, Lcom/android/server/wm/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    const v4, 0x1020392

    invoke-virtual {p0, v4}, Lcom/android/server/wm/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/widget/TextView;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 53
    const v5, 0x1040374

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
