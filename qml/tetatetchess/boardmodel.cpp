#include "boardmodel.h"

#include <QVariant>

BoardModel::BoardModel(QObject *parent) :
    QAbstractListModel(parent),
    BOARD_SIZE(64)
{
}

int BoardModel::rowCount(const QModelIndex &parent) const
{
    return BOARD_SIZE;
}

QVariant BoardModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();


}
