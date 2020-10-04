.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/ShortcutUser;

.field private final synthetic f$1:Lcom/android/server/pm/ShortcutService;

.field private final synthetic f$2:[I

.field private final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;->f$0:Lcom/android/server/pm/ShortcutUser;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;->f$1:Lcom/android/server/pm/ShortcutService;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;->f$2:[I

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;->f$3:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;->f$0:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;->f$1:Lcom/android/server/pm/ShortcutService;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;->f$2:[I

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;->f$3:[I

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$mergeRestoredFile$4$ShortcutUser(Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
