.class public final synthetic Landroid/net/shared/-$$Lambda$InitialConfiguration$MwQ3SqOgt4uewKbIAElg1lpdfTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/shared/-$$Lambda$InitialConfiguration$MwQ3SqOgt4uewKbIAElg1lpdfTI;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/shared/-$$Lambda$InitialConfiguration$MwQ3SqOgt4uewKbIAElg1lpdfTI;->f$0:Ljava/util/function/Predicate;

    invoke-static {v0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$not$4(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
