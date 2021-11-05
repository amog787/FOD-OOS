.class public Lcom/android/server/uri/UriPermission$PersistedTimeComparator;
.super Ljava/lang/Object;
.source "UriPermission.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistedTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/uri/UriPermission;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/uri/UriPermission;
    .param p2, "rhs"    # Lcom/android/server/uri/UriPermission;

    .line 357
    iget-wide v0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    iget-wide v2, p2, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 354
    check-cast p1, Lcom/android/server/uri/UriPermission;

    check-cast p2, Lcom/android/server/uri/UriPermission;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;->compare(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission;)I

    move-result p1

    return p1
.end method
