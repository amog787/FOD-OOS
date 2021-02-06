.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$ExJevXZDYkRd53ZUFBxgzPqxBsM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$ExJevXZDYkRd53ZUFBxgzPqxBsM;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$ExJevXZDYkRd53ZUFBxgzPqxBsM;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$ExJevXZDYkRd53ZUFBxgzPqxBsM;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$ExJevXZDYkRd53ZUFBxgzPqxBsM;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->lambda$checkPackageChanges$11$ShortcutService(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
