.class public final synthetic Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;
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

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, p1}, Lcom/android/server/backup/TransportManager;->lambda$fromPackageFilter$3(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
