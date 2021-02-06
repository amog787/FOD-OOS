.class public final synthetic Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/utils/BytesReadListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;

    invoke-direct {v0}, Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;-><init>()V

    sput-object v0, Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;->INSTANCE:Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBytesRead(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/backup/restore/FullRestoreEngine;->lambda$restoreOneFile$0(J)V

    return-void
.end method
