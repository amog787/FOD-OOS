.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;IILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$2:I

    iput p4, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$4:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$2:I

    iget v3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$3:I

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8;->f$4:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$verifyActivityCanHandleIntentAndExported$5$CrossProfileAppsServiceImpl(Landroid/content/Intent;IILandroid/content/ComponentName;)V

    return-void
.end method
