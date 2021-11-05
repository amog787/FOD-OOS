.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobMetadata;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobMetadata;Ljava/lang/String;Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;->f$0:Lcom/android/server/blob/BlobMetadata;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;->f$2:Landroid/os/RevocableFileDescriptor;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;->f$0:Lcom/android/server/blob/BlobMetadata;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;->f$2:Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$createRevocableFd$5$BlobMetadata(Ljava/lang/String;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V

    return-void
.end method
