.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;->f$1:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;->f$1:Landroid/content/IntentFilter;

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->lambda$getShareTargets$2(Ljava/util/List;Landroid/content/IntentFilter;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
