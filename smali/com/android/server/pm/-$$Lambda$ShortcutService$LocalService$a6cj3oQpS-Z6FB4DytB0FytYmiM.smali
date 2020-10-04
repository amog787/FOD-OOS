.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutInfoLocked$2(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    return p1
.end method
