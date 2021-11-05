.class public final synthetic Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;->f$0:I

    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService;->lambda$removeLocked$1(ILcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p1

    return p1
.end method
