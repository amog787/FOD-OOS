.class public final synthetic Lcom/android/server/-$$Lambda$TelephonyRegistry$kbHTNHMcu4ep02HSrYzRQeY7ThQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$TelephonyRegistry$kbHTNHMcu4ep02HSrYzRQeY7ThQ;->f$0:Lcom/android/server/TelephonyRegistry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$TelephonyRegistry$kbHTNHMcu4ep02HSrYzRQeY7ThQ;->f$0:Lcom/android/server/TelephonyRegistry;

    check-cast p1, Lcom/android/server/TelephonyRegistry$Record;

    invoke-virtual {v0, p1}, Lcom/android/server/TelephonyRegistry;->lambda$notifyActiveDataSubIdChanged$1$TelephonyRegistry(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result p1

    return p1
.end method
